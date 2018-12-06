package ${packageName}.view.fragment

import android.os.Bundle

import com.ayvytr.rxlifecycle.BaseMvpFragment
import ${packageName}.presenter.${className}Presenter
import ${packageName}.contract.${className}Contract
import ${packageName}.model.${className}Model

class ${className}Fragment : BaseMvpFragment<${className}Presenter>(), ${className}Contract.View {

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
