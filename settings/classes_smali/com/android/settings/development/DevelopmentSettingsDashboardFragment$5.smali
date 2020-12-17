.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;
.super Landroid/database/ContentObserver;
.source "DevelopmentSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/os/Handler;)V
    .registers 3

    .line 618
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "BluelightUtils"

    const-string v0, "blue light changed"

    .line 621
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$300(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/meizu/settings/development/FlymeDevelopmentSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/development/FlymeDevelopmentSettings;->onResume()V

    return-void
.end method
