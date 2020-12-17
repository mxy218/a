.class Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;
.super Landroid/os/AsyncTask;
.source "FlymeDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 2

    .line 717
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/meizu/settings/home/FlymeDashboardSummary$1;)V
    .registers 3

    .line 717
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 717
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .registers 18

    move-object/from16 v0, p0

    .line 721
    iget-object v1, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymeDashboardSummary"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_26

    .line 724
    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-object v2

    .line 727
    :cond_26
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-virtual {v4}, Lcom/meizu/settings/FlymeSettingsApplication;->isThemeChanged()Z

    move-result v4

    .line 729
    iget-object v5, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1102(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    .line 730
    iget-object v5, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1002(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    .line 731
    iget-object v5, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2102(Lcom/meizu/settings/home/FlymeDashboardSummary;Landroid/accounts/AccountManager;)Landroid/accounts/AccountManager;

    .line 732
    iget-object v5, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v5}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2200(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    .line 735
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    :try_start_55
    const-string v6, "FlymeDashboardSummary"

    .line 736
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "categoryChanged[0]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v9, p1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", mDashboardTileList:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", isThemeChanged:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_96

    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_96

    if-eqz v4, :cond_1c4

    .line 740
    :cond_96
    move-object v6, v1

    check-cast v6, Lcom/android/settings/SettingsActivity;

    .line 741
    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()Ljava/util/List;

    move-result-object v6

    if-eqz v4, :cond_a8

    .line 743
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/FlymeSettingsApplication;

    invoke-virtual {v4}, Lcom/meizu/settings/FlymeSettingsApplication;->resetThemeChangedState()V

    :cond_a8
    if-eqz v6, :cond_1e1

    .line 745
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b2

    goto/16 :goto_1e1

    .line 749
    :cond_b2
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 750
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_c1

    .line 752
    monitor-exit v5

    return-object v2

    .line 756
    :cond_c1
    new-array v7, v4, [I

    move v9, v8

    move v10, v9

    :goto_c5
    const v11, 0x7f1205e3

    if-ge v9, v4, :cond_19b

    if-eqz v9, :cond_e3

    if-eqz v10, :cond_e3

    .line 761
    new-instance v12, Lcom/android/settingslib/drawer/Tile;

    new-instance v13, Landroid/content/pm/ActivityInfo;

    invoke-direct {v13}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 762
    invoke-virtual {v1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v13, v11}, Lcom/android/settingslib/drawer/Tile;-><init>(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_e3
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 767
    invoke-virtual {v11}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v12

    .line 768
    aput v12, v7, v9

    move v14, v8

    move v13, v10

    move v10, v14

    :goto_f2
    if-ge v10, v12, :cond_193

    .line 771
    invoke-virtual {v11, v10}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v15

    const-string v8, "FlymeDashboardSummary"

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v3}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_13e

    .line 773
    invoke-virtual {v15}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12f

    goto :goto_13e

    :cond_12f
    add-int/lit8 v14, v14, 0x1

    .line 786
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v10}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto :goto_18c

    .line 774
    :cond_13e
    :goto_13e
    iget-object v2, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_173

    const-string v2, "Google"

    iget-object v3, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {v3}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_173

    const-string v2, "FlymeDashboardSummary"

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip null tile index isCTS= "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    :cond_173
    const-string v2, "FlymeDashboardSummary"

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip null tile index = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_18c

    const/4 v13, 0x0

    :cond_18c
    :goto_18c
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_f2

    :cond_193
    add-int/lit8 v9, v9, 0x1

    move v10, v13

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_c5

    .line 789
    :cond_19b
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 790
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v3}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v3

    .line 791
    invoke-virtual {v1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 790
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 792
    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 796
    :cond_1c4
    iget-object v2, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    new-instance v3, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    iget-object v4, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v4}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1100(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object v4

    iget-object v0, v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 797
    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$600(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result v0

    invoke-static {}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2300()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v1, v4, v0, v6}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;-><init>(Landroid/content/Context;Lcom/meizu/settings/utils/FlymeAccountHelper;ZLjava/util/List;)V

    .line 796
    invoke-static {v2, v3}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$802(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    .line 799
    monitor-exit v5

    const/4 v0, 0x0

    return-object v0

    .line 746
    :cond_1e1
    :goto_1e1
    monitor-exit v5

    const/4 v0, 0x0

    return-object v0

    :catchall_1e4
    move-exception v0

    .line 799
    monitor-exit v5
    :try_end_1e6
    .catchall {:try_start_55 .. :try_end_1e6} :catchall_1e4

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 717
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostExecute, isViewCreated:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2400(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeDashboardSummary"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2400(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 808
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$2500(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    :cond_31
    return-void
.end method
