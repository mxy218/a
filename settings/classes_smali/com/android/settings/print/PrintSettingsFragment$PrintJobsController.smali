.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobsController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .registers 3

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    .line 294
    new-instance p1, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 289
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p2, :cond_181

    .line 302
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_181

    .line 305
    :cond_c
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "print_jobs_category"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 306
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 309
    :cond_2a
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 310
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$600(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_43

    const-string v0, "PrintSettingsFragment"

    const-string v1, "No preference context, skip adding print jobs"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_43
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_190

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobInfo;

    .line 317
    new-instance v4, Landroidx/preference/Preference;

    invoke-direct {v4, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 319
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 320
    const-class v6, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v6

    const v7, 0x7f121095

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v6, v11, :cond_c7

    if-eq v6, v10, :cond_c7

    if-eq v6, v9, :cond_9a

    if-eq v6, v8, :cond_85

    goto :goto_f3

    .line 337
    :cond_85
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f121097

    new-array v13, v12, [Ljava/lang/Object;

    .line 339
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 337
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f3

    .line 342
    :cond_9a
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_b5

    .line 343
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f121093

    new-array v13, v12, [Ljava/lang/Object;

    .line 345
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 343
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f3

    .line 347
    :cond_b5
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    new-array v13, v12, [Ljava/lang/Object;

    .line 349
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 347
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f3

    .line 326
    :cond_c7
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v6

    if-nez v6, :cond_e2

    .line 327
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f1210a4

    new-array v13, v12, [Ljava/lang/Object;

    .line 329
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 327
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_f3

    .line 331
    :cond_e2
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    new-array v13, v12, [Ljava/lang/Object;

    .line 333
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 331
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    :goto_f3
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v7, 0x7f12109a

    new-array v13, v11, [Ljava/lang/Object;

    .line 355
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 356
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v15

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v17

    const/16 v19, 0x3

    const/16 v20, 0x3

    .line 355
    invoke-static/range {v15 .. v20}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v13, v12

    .line 354
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-array v7, v12, [I

    const v12, 0x1010429

    aput v12, v7, v5

    invoke-virtual {v6, v7}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 361
    invoke-virtual {v6, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 362
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getState()I

    move-result v6

    if-eq v6, v11, :cond_152

    if-eq v6, v10, :cond_152

    if-eq v6, v9, :cond_13e

    if-eq v6, v8, :cond_13e

    goto :goto_165

    .line 376
    :cond_13e
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x10804f8

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 378
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 379
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_165

    .line 367
    :cond_152
    iget-object v6, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x10804f7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 369
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 370
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :goto_165
    invoke-virtual {v4}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 385
    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v3, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_47

    .line 303
    :cond_181
    :goto_181
    iget-object v1, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_190
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 394
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/print/PrintSettingsFragment;->access$500(Lcom/android/settings/print/PrintSettingsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
