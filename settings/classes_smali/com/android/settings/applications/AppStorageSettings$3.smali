.class Lcom/android/settings/applications/AppStorageSettings$3;
.super Landroid/os/Handler;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 589
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 592
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_12

    goto :goto_2c

    .line 599
    :cond_12
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p1, v1}, Lcom/android/settings/applications/AppStorageSettings;->access$202(Lcom/android/settings/applications/AppStorageSettings;Z)Z

    .line 601
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p0}, Lcom/android/settings/applications/AppStorageSettings;->access$400(Lcom/android/settings/applications/AppStorageSettings;)V

    goto :goto_2c

    .line 594
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->access$102(Lcom/android/settings/applications/AppStorageSettings;Z)Z

    .line 595
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->access$202(Lcom/android/settings/applications/AppStorageSettings;Z)Z

    .line 596
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->access$300(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V

    :goto_2c
    return-void
.end method
