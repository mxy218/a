.class public final Lcom/android/server/security/TrpUtils$RxThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "TrpUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/TrpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RxThreadFactory"
.end annotation


# static fields
.field public static final NONE:Ljava/util/concurrent/ThreadFactory;

.field private static final serialVersionUID:J = -0x7ab1e491ecc1649fL


# instance fields
.field final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/server/security/TrpUtils$RxThreadFactory$1;

    invoke-direct {v0}, Lcom/android/server/security/TrpUtils$RxThreadFactory$1;-><init>()V

    sput-object v0, Lcom/android/server/security/TrpUtils$RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"  # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/security/TrpUtils$RxThreadFactory;->prefix:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6
    .param p1, "r"  # Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/security/TrpUtils$RxThreadFactory;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/security/TrpUtils$RxThreadFactory;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 55
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 56
    return-object v0
.end method
