.class Lcom/android/server/pm/StagingManager$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalIntentReceiver"
.end annotation


# instance fields
.field private mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mResult:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 674
    new-instance v0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver$1;-><init>(Lcom/android/server/pm/StagingManager$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/StagingManager$1;)V
    .registers 2

    .line 671
    invoke-direct {p0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/StagingManager$LocalIntentReceiver;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    .line 671
    iget-object p0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .registers 3

    .line 688
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getResult()Landroid/content/Intent;
    .registers 3

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 694
    :catch_9
    move-exception v0

    .line 695
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
