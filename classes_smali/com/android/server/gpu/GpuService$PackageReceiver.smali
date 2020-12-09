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

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 164
    nop

    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v0}, Lcom/android/server/gpu/GpuService;->access$700(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 170
    return-void

    .line 173
    :cond_16
    const/4 p1, 0x0

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xa480416

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4a

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_40

    const v2, 0x5c1076e2

    if-eq v1, v2, :cond_37

    :cond_36
    goto :goto_54

    :cond_37
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    goto :goto_55

    :cond_40
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    move p1, v3

    goto :goto_55

    :cond_4a
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    move p1, v4

    goto :goto_55

    :goto_54
    move p1, v0

    :goto_55
    if-eqz p1, :cond_5c

    if-eq p1, v4, :cond_5c

    if-eq p1, v3, :cond_5c

    goto :goto_67

    .line 179
    :cond_5c
    iget-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {p1}, Lcom/android/server/gpu/GpuService;->access$800(Lcom/android/server/gpu/GpuService;)V

    .line 180
    iget-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {p1}, Lcom/android/server/gpu/GpuService;->access$300(Lcom/android/server/gpu/GpuService;)V

    .line 181
    nop

    .line 186
    :goto_67
    return-void
.end method
