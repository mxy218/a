.class Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
.super Ljava/lang/Object;
.source "InterceptionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailInfo"
.end annotation


# instance fields
.field mBgRefence:I

.field mCalleePkg:Ljava/lang/String;

.field mCallerPkg:Ljava/lang/String;

.field mDetail:Ljava/lang/String;

.field mIntercept:I

.field mReference:I

.field mSpendTime:J

.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionStats;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/InterceptionStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 8
    .param p2, "caller"  # Ljava/lang/String;
    .param p3, "callee"  # Ljava/lang/String;
    .param p4, "detail"  # Ljava/lang/String;
    .param p5, "time"  # J
    .param p7, "ref"  # I

    .line 476
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->this$0:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p2, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCallerPkg:Ljava/lang/String;

    .line 478
    iput-object p3, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    .line 479
    iput-object p4, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mDetail:Ljava/lang/String;

    .line 480
    iput-wide p5, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    .line 481
    iput p7, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    .line 482
    return-void
.end method

.method constructor <init>(Lcom/android/server/hips/intercept/InterceptionStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V
    .registers 10
    .param p2, "caller"  # Ljava/lang/String;
    .param p3, "callee"  # Ljava/lang/String;
    .param p4, "detail"  # Ljava/lang/String;
    .param p5, "time"  # J
    .param p7, "ref"  # I
    .param p8, "bgref"  # I
    .param p9, "interceptref"  # I

    .line 484
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->this$0:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p2, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCallerPkg:Ljava/lang/String;

    .line 486
    iput-object p3, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    .line 487
    iput-object p4, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mDetail:Ljava/lang/String;

    .line 488
    iput-wide p5, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    .line 489
    iput p7, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    .line 490
    iput p8, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mBgRefence:I

    .line 491
    iput p9, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mIntercept:I

    .line 492
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCallerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callee:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " refrence:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bgref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mBgRefence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
