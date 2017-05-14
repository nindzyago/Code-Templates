package ${packageName}.fragments${dotSubpackage};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
<#if useButterKnife>
import butterknife.ButterKnife;
</#if>
import ${packageName}.interfaces.views${dotSubpackage}.${viewName};
import ${packageName}.R;
import ${packageName}.presenters${dotSubpackage}.${presenterName};
import ${packageName}.fragments.BaseFragment;
import ${packageName}.App;

import com.arellomobile.mvp.presenter.InjectPresenter;
import com.arellomobile.mvp.presenter.ProvidePresenter;


public class ${className} extends BaseFragment implements ${viewName} {

    private static final int LAYOUT = R.layout.${fragmentName};

	@InjectPresenter	${presenterName}  ${presenterName?uncap_first};

     @ProvidePresenter
      ${presenterName} provide${presenterName}() {
            return App.getAppComponent().get${presenterName}();
        }

<#if includeFactory>
    public static ${className} newInstance() {
        ${className} fragment = new ${className}();

        Bundle args = new Bundle();
        fragment.setArguments(args);

        return fragment;
    }
</#if>

    @Override
    public View onCreateView(final LayoutInflater inflater, final   ViewGroup container,
            final Bundle savedInstanceState) {
<#if includeLayout>
        rootView = inflater.inflate(LAYOUT, container, false);
        <#if useButterKnife>
        ButterKnife.bind(this, view);
        </#if>
        return rootView;
</#if>
    }

}
