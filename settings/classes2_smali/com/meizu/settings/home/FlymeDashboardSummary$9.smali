.class Lcom/meizu/settings/home/FlymeDashboardSummary$9;
.super Ljava/lang/Object;
.source "FlymeDashboardSummary.java"

# interfaces
.implements Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;->createOnItemClickListener()Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 2

    .line 536
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/android/settingslib/drawer/Tile;)V
    .registers 13

    const-string v0, "com.meizu.sceneinfo"

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.battery"

    const-string v3, "FlymeDashboardSummary"

    const-string v4, "com.meizu.power.POWER_UI_MAIN"

    if-eqz p1, :cond_348

    .line 539
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_348

    .line 541
    :try_start_12
    iget-object v5, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v5, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1700(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/android/settingslib/drawer/Tile;)V

    .line 543
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 544
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_310

    .line 547
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cn :"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_325

    .line 550
    iget-object v6, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v6, v8}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1802(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    const-string v6, "com.meizu.settings.MzSettingsActivity$FlymeAccountActivity"

    .line 551
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.account.ACCOUNTCENTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.account"

    .line 553
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    .line 554
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_72
    move-object v7, v0

    goto/16 :goto_325

    :cond_75
    const-string v6, "com.meizu.settings.MzSettingsActivity$FlymeBatterySettingsActivity"

    .line 555
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 556
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v5, 0x10008000

    .line 557
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    iget-object v5, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 560
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    .line 561
    :cond_98
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v4}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 563
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    :cond_a8
    const-string v1, "there is no package to handle the action:com.meizu.power.POWER_UI_MAIN"

    .line 565
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_ae
    const-string v1, "com.meizu.settings.MzSettingsActivity$FlymeSystemUpdateActivity"

    .line 567
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.flyme.update"

    .line 569
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    :cond_c3
    const-string v1, "com.meizu.settings.MzSettingsActivity$FlymeLabActivity"

    .line 570
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.flymelab.SHOW_FEATURES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.flymelab"

    .line 572
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    :cond_d8
    const-string v1, "com.android.settings.Settings$SimSettingsActivity"

    .line 573
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 574
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    aget-object v2, v0, v9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 575
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 576
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 574
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    :cond_106
    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    .line 577
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 578
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    aget-object v2, v0, v8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 579
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 580
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 578
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    :cond_134
    const-string v1, "com.android.settings.Settings$TetherSettingsActivity"

    .line 581
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 582
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->isTetheringRestricted()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 583
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 584
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 587
    :cond_15c
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 588
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 589
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 587
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    :cond_183
    const-string v1, "com.android.settings.Settings$BluetoothSettingsActivity"

    .line 590
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 591
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 592
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 593
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 591
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    :cond_1b2
    const-string v1, "com.android.settings.Settings$NetworkDashboardActivity"

    .line 594
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e1

    .line 595
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 596
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 597
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 595
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    :cond_1e1
    const-string v1, "com.android.settings.Settings$LocationSettingsActivity"

    .line 598
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_210

    .line 599
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 600
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 601
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 599
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    :cond_210
    const-string v1, "com.android.settings.Settings$WifiDisplaySettingsActivity"

    .line 602
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_240

    .line 603
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 604
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 605
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 603
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    :cond_240
    const-string v1, "com.meizu.settings.MzSettingsActivity$FlymeSOSActivity"

    .line 606
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.contacts.action.SOS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "usage_from_package"

    .line 608
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.dialer"

    .line 609
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_72

    :cond_265
    const-string v1, "com.meizu.settings.MzSettingsActivity$FlymeDigitalHealthActivity"

    .line 610
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a8

    .line 611
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_281

    .line 612
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.wellbeing.action.HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.wellbeing"

    .line 613
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_72

    :cond_281
    const-string v1, "com.meizu.digitalwellbeing.VIEW"

    .line 616
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a2

    .line 618
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 619
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 621
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v7, v2

    goto/16 :goto_325

    .line 623
    :cond_2a2
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1900(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    return-void

    :cond_2a8
    const-string v0, "com.meizu.settings.MzSettingsActivity$FlymeAicyActivity"

    .line 628
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c4

    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.smartapp.action.AICY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.voiceassistant"

    .line 630
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x4208000

    .line 631
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_72

    :cond_2c4
    const-string v0, "com.meizu.settings.MzSettingsActivity$MzWallpaperTypeSettingsActivity"

    .line 633
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2da

    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.settings.MZWALLPAPERTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.customizecenter"

    .line 635
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_72

    :cond_2da
    const-string v0, "com.meizu.settings.MzSettingsActivity$FlymeNfcSettingsActivity"

    .line 636
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 637
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 638
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 639
    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 637
    invoke-static/range {v1 .. v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_72

    .line 641
    :cond_30a
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0, v9}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1802(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    goto :goto_325

    .line 644
    :cond_310
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2000()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_320

    .line 645
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0, v8}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1802(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    goto :goto_325

    .line 647
    :cond_320
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0, v9}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1802(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    :cond_325
    :goto_325
    if-nez v7, :cond_32b

    .line 651
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v7

    :cond_32b
    const-string v0, ":settings:show_fragment_title"

    .line 654
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 655
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_343
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_343} :catch_344

    goto :goto_348

    :catch_344
    move-exception p1

    .line 657
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 662
    :cond_348
    :goto_348
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result p1

    if-eqz p1, :cond_359

    .line 663
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    :cond_359
    return-void
.end method
