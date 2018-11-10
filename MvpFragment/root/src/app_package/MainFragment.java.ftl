package ${packageName}.view.fragment;


import android.os.Bundle;
import android.support.annotation.Nullable;

import com.ayvytr.mvprxlifecycle.BaseMvpFragment;
import ${packageName}.presenter.${presenterClass};
import ${packageName}.contract.${contractClass};
import ${packageName}.model.${modelClass};

public class ${className} extends BaseMvpFragment<MainPresenter> implements MainContract.View {
    @Override
    protected MainPresenter getPresenter() {
        return new MainPresenter(new MainModel(), this);
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
