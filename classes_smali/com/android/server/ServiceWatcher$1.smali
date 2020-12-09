.class Lcom/android/server/ServiceWatcher$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServiceWatcher;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    .line 196
    iget-object p2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {p2}, Lcom/android/server/ServiceWatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 197
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 201
    iget-object p2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {p2}, Lcom/android/server/ServiceWatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 202
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 4

    .line 191
    iget-object p2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {p2}, Lcom/android/server/ServiceWatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;Z)V

    .line 192
    return-void
.end method
