package ${packageName}.view.fragment;


import android.os.Bundle;
import android.support.annotation.Nullable;

import com.ayvytr.mvprxlifecycle.BaseMvpFragment;
import ${packageName}.presenter.${className}Presenter;
import ${packageName}.contract.${className}Contract;
import ${packageName}.model.${className}Model;

public class ${className}Fragment extends BaseMvpFragment<${className}Presenter> 
	implements ${className}Contract.View {
	
    @Override
    protected ${className}Presenter getPresenter() {
        return new ${className}Presenter(new ${className}Model(), this);
    }

    @Override
    public void initExtra() {

    }

    @Override
    public void initView(Bundle savedInstanceState) {

    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {

    }

    @Override
    public int getContentViewRes() {
	<#if generateLayout>
        return R.layout.${layoutName};
	<#else>	
        return 0;
	</#if>
    }
}
