.class Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;
.super Ljava/lang/Object;
.source "TrpVectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/TrpVectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeTickRunnable"
.end annotation


# instance fields
.field private mTime:J

.field final synthetic this$0:Lcom/android/server/security/TrpVectorManager;


# direct methods
.method constructor <init>(Lcom/android/server/security/TrpVectorManager;J)V
    .registers 4
    .param p2, "time"  # J

    .line 306
    iput-object p1, p0, Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-wide p2, p0, Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;->mTime:J

    .line 308
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;->this$0:Lcom/android/server/security/TrpVectorManager;

    iget-wide v1, p0, Lcom/android/server/security/TrpVectorManager$TimeTickRunnable;->mTime:J

    invoke-static {v0, v1, v2}, Lcom/android/server/security/TrpVectorManager;->access$100(Lcom/android/server/security/TrpVectorManager;J)V

    .line 312
    return-void
.end method
