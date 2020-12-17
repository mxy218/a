.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodClientInfo"
.end annotation


# instance fields
.field mBindingSequence:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field final mClientId:I

.field mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field final mPid:I

.field final mSelfReportedDisplayId:I

.field mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field

.field final mUid:I

.field final mWindowMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWriteChannel:Landroid/view/InputChannel;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputMethodClient;III)V
    .registers 6
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "selfReportedDisplayId"  # I

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    .line 647
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 648
    iput p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mUid:I

    .line 649
    iput p3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mPid:I

    .line 650
    iput p4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mSelfReportedDisplayId:I

    .line 651
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->getNext()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    .line 652
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PerUserData.mLock"
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mBindingSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mBindingSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mWriteChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mInputMethodSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mMSInputMethodSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 660
    return-void
.end method
