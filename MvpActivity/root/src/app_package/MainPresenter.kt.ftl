package ${packageName}.presenter

import com.ayvytr.mvp.BasePresenter
import ${packageName}.contract.${className}Contract

class ${className}Presenter: BasePresenter<${className}Contract.Model, ${className}Contract.View> {
    constructor() {
    }

    constructor(model: ${className}Contract.Model, view: ${className}Contract.View) : super(model, view) {
        ;
    }

    constructor(view: ${className}Contract.View) : super(view) {
    }
}
