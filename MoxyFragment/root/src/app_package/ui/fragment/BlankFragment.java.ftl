package ${packageName}.fragments${dotSubpackage};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.interfaces.views${dotSubpackage}.${viewName};
import ${packageName}.R;
import ${packageName}.presenters${dotSubpackage}.${presenterName};
import ${packageName}.fragments.BaseFragment;

import com.arellomobile.mvp.MvpFragment;
import com.arellomobile.mvp.presenter.InjectPresenter;

public class ${className} extends BaseFragment implements ${viewName} {

    private static final int LAYOUT = R.layout.${fragmentName};

	//@formatter:off
	@InjectPresenter	${presenterName} m${presenterName};
	//@formatter:on

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
        View view = inflater.inflate(LAYOUT, container, false);
        return view;
</#if>
    }

}
