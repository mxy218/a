.class Lcom/android/server/soundtrigger/SoundTriggerService$Operation;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;
    }
.end annotation


# instance fields
.field private final mDropOp:Ljava/lang/Runnable;

.field private final mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

.field private final mSetupOp:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;)V
    .registers 4

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mSetupOp:Ljava/lang/Runnable;

    .line 753
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

    .line 754
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mDropOp:Ljava/lang/Runnable;

    .line 755
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$1;)V
    .registers 5

    .line 741
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setup()V
    .registers 2

    .line 758
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mSetupOp:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 759
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 761
    :cond_7
    return-void
.end method


# virtual methods
.method drop()V
    .registers 2

    .line 769
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->setup()V

    .line 771
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mDropOp:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 772
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 774
    :cond_a
    return-void
.end method

.method run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->setup()V

    .line 765
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;->run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    .line 766
    return-void
.end method
