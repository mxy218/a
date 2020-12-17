.class Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteObserver"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "returnCode"  # I

    .line 597
    const/4 v0, 0x1

    if-ne p2, v0, :cond_17

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " has been deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 600
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateAppsReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v0  # "s":Ljava/lang/StringBuilder;
    :cond_17
    return-void
.end method
