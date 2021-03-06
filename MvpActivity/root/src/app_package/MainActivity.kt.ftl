package ${packageName}.view.activity

import com.ayvytr.rxlifecycle.BaseMvpActivity
import ${packageName}.presenter.${className}Presenter
import ${packageName}.contract.${className}Contract
import ${packageName}.model.${className}Model
import android.os.Bundle

class ${className}Activity : BaseMvpActivity<${className}Presenter>(), ${className}Contract.View {
	
	override fun getPresenter(): ${className}Presenter {
        return ${className}Presenter(${className}Model(), this)
    }

    override fun initExtra() {

    }

    override fun initView(savedInstanceState: Bundle?) {

    }

    override fun initData(savedInstanceState: Bundle?) {

    }

    override fun getContentViewRes(): Int {
	<#if generateLayout>
        return R.layout.${layoutName}
	<#else>	
        return 0
	</#if>
    }
}
