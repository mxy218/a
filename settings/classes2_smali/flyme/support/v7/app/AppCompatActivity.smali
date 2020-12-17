.class public Lflyme/support/v7/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lflyme/support/v7/app/AppCompatCallback;
.implements Landroidx/core/app/TaskStackBuilder$SupportParentable;
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Lflyme/support/v7/app/AppCompatDelegate;

.field private mResources:Landroid/content/res/Resources;

.field private mStateSaved:Z

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mThemeId:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 167
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 535
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 196
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Lflyme/support/v7/app/AppCompatDelegate;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 527
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mDelegate:Lflyme/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_a

    .line 528
    invoke-static {p0, p0}, Lflyme/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Lflyme/support/v7/app/AppCompatCallback;)Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mDelegate:Lflyme/support/v7/app/AppCompatDelegate;

    .line 530
    :cond_a
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatActivity;->mDelegate:Lflyme/support/v7/app/AppCompatDelegate;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 1

    .line 147
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .line 540
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 541
    new-instance v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    .line 543
    :cond_15
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1d

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public getSupportActionBar()Lflyme/support/v7/app/ActionBar;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 122
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 435
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .registers 1

    .line 252
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 608
    iget-boolean v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mStateSaved:Z

    if-eqz v0, :cond_31

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed after onSaveInstanceState: mStateSaved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lflyme/support/v7/util/ReflectUtils;->getFragmentsStateSavedValue(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCompatActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lflyme/support/v7/util/ReflectUtils;->setFragmentsStateSavedValue(Ljava/lang/Object;Z)V

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v1}, Lflyme/support/v7/util/ReflectUtils;->setFragmentsStateSavedValue(Ljava/lang/Object;Z)V

    .line 614
    :cond_31
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onBackTopTouch()V
    .registers 1

    return-void
.end method

.method public onBottomItemSelected(Lflyme/support/v7/view/menu/FMenuItem;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 172
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1b

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 178
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .line 474
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->onSupportContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 85
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatDelegate;->applyDayNight()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mThemeId:I

    if-eqz v0, :cond_28

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_25

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lflyme/support/v7/app/AppCompatActivity;->mThemeId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    goto :goto_28

    .line 94
    :cond_25
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->setTheme(I)V

    .line 97
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateBottomMenu(Lflyme/support/v7/view/menu/FMenu;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .registers 2
    .param p1  # Landroidx/core/app/TaskStackBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    invoke-virtual {p1, p0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 216
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 201
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    .line 206
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_24

    if-eqz p1, :cond_24

    .line 207
    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_24

    .line 208
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result p0

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuItemSelected(ILflyme/support/v7/view/menu/FMenuItem;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 498
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onOptionsMenuCreated(Lflyme/support/v7/view/menu/FMenu;)V
    .registers 2

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 509
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 1

    .line 190
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 191
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .registers 2
    .param p1  # Landroidx/core/app/TaskStackBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 593
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lflyme/support/v7/app/AppCompatActivity;->mStateSaved:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 514
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 515
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lflyme/support/v7/app/AppCompatActivity;->mStateSaved:Z

    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 184
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 185
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method public onSupportActionModeFinished(Lflyme/support/v7/view/ActionMode;)V
    .registers 2
    .param p1  # Lflyme/support/v7/view/ActionMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onSupportActionModeStarted(Lflyme/support/v7/view/ActionMode;)V
    .registers 2
    .param p1  # Lflyme/support/v7/view/ActionMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onSupportContentChanged()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .registers 3

    .line 398
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 401
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 402
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    .line 403
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 404
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 405
    invoke-virtual {v0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 408
    :try_start_19
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_24

    .line 412
    :catch_1d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_24

    .line 417
    :cond_21
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_24
    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 221
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 222
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
    .registers 2
    .param p1  # Lflyme/support/v7/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setContentView(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 152
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 157
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 162
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 104
    iput p1, p0, Lflyme/support/v7/app/AppCompatActivity;->mThemeId:I

    return-void
.end method

.method public setUiOptions(I)V
    .registers 2

    .line 549
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->setUiOptions(I)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 1

    .line 245
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .registers 2
    .param p1  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 468
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 2
    .param p1  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 452
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
