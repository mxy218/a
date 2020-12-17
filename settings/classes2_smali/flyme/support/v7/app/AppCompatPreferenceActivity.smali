.class public Lflyme/support/v7/app/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"

# interfaces
.implements Lflyme/support/v7/app/AppCompatCallback;
.implements Landroidx/core/app/TaskStackBuilder$SupportParentable;
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Lflyme/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private mzResetListViewPaddingTop()V
    .registers 2

    .line 496
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 501
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setFitsSystemWindows(Z)V

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 504
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_13
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 150
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getDelegate()Lflyme/support/v7/app/AppCompatDelegate;
    .registers 2

    .line 452
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatPreferenceActivity;->mDelegate:Lflyme/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_a

    .line 453
    invoke-static {p0, p0}, Lflyme/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Lflyme/support/v7/app/AppCompatCallback;)Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatPreferenceActivity;->mDelegate:Lflyme/support/v7/app/AppCompatDelegate;

    .line 455
    :cond_a
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatPreferenceActivity;->mDelegate:Lflyme/support/v7/app/AppCompatDelegate;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 1

    .line 130
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getSupportActionBar()Lflyme/support/v7/app/ActionBar;
    .registers 1

    .line 106
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .registers 1

    .line 406
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .registers 1

    .line 219
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

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
    .registers 2

    .line 155
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 70
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 71
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x4000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_23

    .line 74
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->mzResetListViewPaddingTop()V

    :cond_23
    return-void
.end method

.method public onCreateBottomMenu(Lflyme/support/v7/view/menu/FMenu;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .registers 2

    .line 325
    invoke-virtual {p1, p0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 187
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 188
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method public onIsHidingHeaders()Z
    .registers 2

    .line 81
    :try_start_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_19

    .line 84
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_19
    throw p0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 173
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 177
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    .line 178
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_24

    if-eqz p1, :cond_24

    .line 179
    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_24

    .line 180
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->onSupportNavigateUp()Z

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 510
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 512
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 515
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onOptionsMenuCreated(Lflyme/support/v7/view/menu/FMenu;)V
    .registers 2

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 1

    .line 167
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 168
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .registers 2

    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 162
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method public onSupportActionModeFinished(Lflyme/support/v7/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onSupportActionModeStarted(Lflyme/support/v7/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onSupportNavigateUp()Z
    .registers 3

    .line 370
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 373
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 374
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    .line 375
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 376
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 377
    invoke-virtual {v0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 380
    :try_start_19
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_24

    .line 384
    :catch_1d
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    goto :goto_24

    .line 389
    :cond_21
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_24
    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 193
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 194
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lflyme/support/v7/view/ActionMode$Callback;)Lflyme/support/v7/view/ActionMode;
    .registers 2
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

    .line 135
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    .line 140
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 145
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatPreferenceActivity;->getDelegate()Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .registers 2

    .line 439
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 2

    .line 423
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
