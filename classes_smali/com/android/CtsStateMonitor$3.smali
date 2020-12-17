.class Lcom/android/CtsStateMonitor$3;
.super Ljava/lang/Object;
.source "CtsStateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CtsStateMonitor;->getInstallAndWhitePermissionPackageName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CtsStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/CtsStateMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/CtsStateMonitor;

    .line 354
    iput-object p1, p0, Lcom/android/CtsStateMonitor$3;->this$0:Lcom/android/CtsStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/CtsStateMonitor$3;->this$0:Lcom/android/CtsStateMonitor;

    const-string v2, "/system/etc/sysconfig/apps-permissions-install"

    invoke-static {v1, v2}, Lcom/android/CtsStateMonitor;->access$800(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/CtsStateMonitor;->MEIZU_CTSINSTALL_PACKAGES_WHITELIST:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/CtsStateMonitor$3;->this$0:Lcom/android/CtsStateMonitor;

    const-string v2, "/system/etc/sysconfig/apps-permissions-default"

    invoke-static {v1, v2}, Lcom/android/CtsStateMonitor;->access$800(Lcom/android/CtsStateMonitor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/CtsStateMonitor;->MEIZU_DEFAULT_PERMISSION_PACKAGES_WHITELIST:Ljava/util/ArrayList;

    .line 359
    return-void
.end method
