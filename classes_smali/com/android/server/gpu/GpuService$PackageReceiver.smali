.class final Lcom/android/server/gpu/GpuService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method private constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/gpu/GpuService;Lcom/android/server/gpu/GpuService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/gpu/GpuService;
    .param p2, "x1"  # Lcom/android/server/gpu/GpuService$1;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    .local v0, "data":Landroid/net/Uri;
    nop

    .line 168
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v2}, Lcom/android/server/gpu/GpuService;->access$700(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 170
    return-void

    .line 173
    :cond_16
    const/4 v2, 0x0

    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 175
    .local v3, "replacing":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0xa480416

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_4b

    const v7, 0x1f50b9c2

    if-eq v6, v7, :cond_41

    const v7, 0x5c1076e2

    if-eq v6, v7, :cond_38

    :cond_37
    goto :goto_55

    :cond_38
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_56

    :cond_41
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v8

    goto :goto_56

    :cond_4b
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v9

    goto :goto_56

    :goto_55
    move v2, v5

    :goto_56
    if-eqz v2, :cond_5d

    if-eq v2, v9, :cond_5d

    if-eq v2, v8, :cond_5d

    goto :goto_68

    .line 179
    :cond_5d
    iget-object v2, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v2}, Lcom/android/server/gpu/GpuService;->access$800(Lcom/android/server/gpu/GpuService;)V

    .line 180
    iget-object v2, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v2}, Lcom/android/server/gpu/GpuService;->access$300(Lcom/android/server/gpu/GpuService;)V

    .line 181
    nop

    .line 186
    :goto_68
    return-void
.end method
