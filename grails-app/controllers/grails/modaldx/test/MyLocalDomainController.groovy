package grails.modaldx.test



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MyLocalDomainController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MyLocalDomain.list(params), model:[myLocalDomainInstanceCount: MyLocalDomain.count()]
    }

    def show(MyLocalDomain myLocalDomainInstance) {
        respond myLocalDomainInstance
    }

    def create() {
        respond new MyLocalDomain(params)
    }

    @Transactional
    def save(MyLocalDomain myLocalDomainInstance) {
        if (myLocalDomainInstance == null) {
            notFound()
            return
        }

        if (myLocalDomainInstance.hasErrors()) {
            respond myLocalDomainInstance.errors, view:'create'
            return
        }

        myLocalDomainInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'myLocalDomainInstance.label', default: 'MyLocalDomain'), myLocalDomainInstance.id])
                redirect myLocalDomainInstance
            }
            '*' { respond myLocalDomainInstance, [status: CREATED] }
        }
    }

    def edit(MyLocalDomain myLocalDomainInstance) {
        respond myLocalDomainInstance
    }

    @Transactional
    def update(MyLocalDomain myLocalDomainInstance) {
        if (myLocalDomainInstance == null) {
            notFound()
            return
        }

        if (myLocalDomainInstance.hasErrors()) {
            respond myLocalDomainInstance.errors, view:'edit'
            return
        }

        myLocalDomainInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MyLocalDomain.label', default: 'MyLocalDomain'), myLocalDomainInstance.id])
                redirect myLocalDomainInstance
            }
            '*'{ respond myLocalDomainInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MyLocalDomain myLocalDomainInstance) {

        if (myLocalDomainInstance == null) {
            notFound()
            return
        }

        myLocalDomainInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MyLocalDomain.label', default: 'MyLocalDomain'), myLocalDomainInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'myLocalDomainInstance.label', default: 'MyLocalDomain'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
