.class Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScorerPackageMonitor"
.end annotation


# instance fields
.field final mPackageToWatch:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$1;)V
    .registers 4

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 199
    return-void

    .line 202
    :cond_9
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v0

    const-string v1, "NetworkScoreService"

    if-eqz v0, :cond_2d

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating binding for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", forceUnbind="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2d
    iget-object p1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {p1}, Lcom/android/server/NetworkScoreService;->access$200(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p1

    .line 208
    if-nez p1, :cond_4a

    .line 211
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "No active scorers available."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_44
    iget-object p1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {p1}, Lcom/android/server/NetworkScoreService;->access$100(Lcom/android/server/NetworkScoreService;)V

    goto :goto_79

    .line 214
    :cond_4a
    if-eqz p2, :cond_51

    .line 215
    iget-object p2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {p2}, Lcom/android/server/NetworkScoreService;->access$300(Lcom/android/server/NetworkScoreService;)V

    .line 217
    :cond_51
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_74

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Binding to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " if needed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_74
    iget-object p2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {p2, p1}, Lcom/android/server/NetworkScoreService;->access$400(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V

    .line 223
    :goto_79
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 9

    .line 183
    if-eqz p4, :cond_f

    .line 184
    array-length v0, p2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_f

    aget-object v2, p2, v1

    .line 185
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 188
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 168
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 169
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 173
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3

    .line 193
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 194
    return-void
.end method
