.class Lcom/android/settings/RadioInfo$14;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;

.field final synthetic val$configItem:I

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;IZ)V
    .registers 4

    .line 1379
    iput-object p1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    iput p2, p0, Lcom/android/settings/RadioInfo$14;->val$configItem:I

    iput-boolean p3, p0, Lcom/android/settings/RadioInfo$14;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$3500(Lcom/android/settings/RadioInfo;)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RadioInfo$14;->val$configItem:I

    .line 1384
    iget-boolean p0, p0, Lcom/android/settings/RadioInfo$14;->val$state:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 1382
    :goto_13
    invoke-virtual {v0, v1, p0}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_16
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_20

    :catch_17
    move-exception p0

    const-string v0, "RadioInfo"

    const-string/jumbo v1, "setImsConfigProvisioned() exception:"

    .line 1386
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method
