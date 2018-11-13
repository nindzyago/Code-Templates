package ${packageName}.views.activities${dotSubpackage};

import ${packageName}.contracts${dotSubpackage}.${viewName};
import ${packageName}.presenters${dotSubpackage}.${presenterName};
import ${packageName}.views.activities.base.BaseActivity;
import ${packageName}.R;
<#if extendsBaseActivity><#if applicationPackage??>import ${applicationPackage}.ui.activity.BaseActivity;</#if><#else></#if>
<#if extendsBaseActivity!!>import com.arellomobile.mvp.MvpActivity;</#if>
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

import com.arellomobile.mvp.presenter.InjectPresenter;
import com.arellomobile.mvp.presenter.ProvidePresenter;
import ${packageName}.App;
import org.koin.android.ext.android.get

public class ${className} extends BaseActivity implements ${viewName}
//    TODO: Uncomment this:
//{
//
//    override fun setupUI() {
//    }
//
//    override fun setupUX() {
//    }
//
//    override fun unbindUX() {
//    }
//
//    override val layout = R.layout.${activityName}
//
//    @InjectPresenter
//    lateinit var ${presenterName?uncap_first} : ${presenterName}
//
//    @ProvidePresenter
//    internal fun provide${presenterName}(): ${presenterName} = get()
//
//}
