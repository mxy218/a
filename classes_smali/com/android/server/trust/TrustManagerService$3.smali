.class Lcom/android/server/trust/TrustManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .line 1402
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 4

    .line 1411
    const/4 p1, 0x1

    return p1
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    .line 1416
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p2, p1}, Lcom/android/server/trust/TrustManagerService;->access$2700(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 3

    .line 1405
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1406
    return-void
.end method
