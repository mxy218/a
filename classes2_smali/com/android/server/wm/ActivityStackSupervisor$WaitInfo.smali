.class Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitInfo"
.end annotation


# instance fields
.field private final mResult:Landroid/app/WaitResult;

.field private final mStartTimeMs:J

.field private final mTargetComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .registers 5

    .line 2845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2846
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 2847
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 2848
    iput-wide p3, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mStartTimeMs:J

    .line 2849
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 2868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WaitInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mTargetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    invoke-virtual {v0, p1, p2}, Landroid/app/WaitResult;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2872
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 2864
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getResult()Landroid/app/WaitResult;
    .registers 2

    .line 2856
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .line 2860
    iget-wide v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mStartTimeMs:J

    return-wide v0
.end method

.method public matches(Landroid/content/ComponentName;)Z
    .registers 3

    .line 2852
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
