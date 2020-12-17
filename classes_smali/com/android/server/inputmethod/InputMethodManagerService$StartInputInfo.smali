.class Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartInputInfo"
.end annotation


# static fields
.field private static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final mClientBindSequenceNumber:I

.field final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final mImeDisplayId:I

.field final mImeId:Ljava/lang/String;

.field final mImeToken:Landroid/os/IBinder;

.field final mImeUserId:I

.field final mRestarting:Z

.field final mSequenceNumber:I

.field final mStartInputReason:I

.field final mTargetDisplayId:I

.field final mTargetUserId:I

.field final mTargetWindow:Landroid/os/IBinder;

.field final mTargetWindowSoftInputMode:I

.field final mTimestamp:J

.field final mWallTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 737
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V
    .registers 15
    .param p1, "imeUserId"  # I
    .param p2, "imeToken"  # Landroid/os/IBinder;
    .param p3, "imeDisplayId"  # I
    .param p4, "imeId"  # Ljava/lang/String;
    .param p5, "startInputReason"  # I
    .param p6, "restarting"  # Z
    .param p7, "targetUserId"  # I
    .param p8, "targetDisplayId"  # I
    .param p9, "targetWindow"  # Landroid/os/IBinder;
    .param p10, "editorInfo"  # Landroid/view/inputmethod/EditorInfo;
    .param p11, "targetWindowSoftInputMode"  # I
    .param p12, "clientBindSequenceNumber"  # I

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mWallTime:J

    .line 771
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeUserId:I

    .line 772
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    .line 773
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeDisplayId:I

    .line 774
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    .line 775
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    .line 776
    iput-boolean p6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    .line 777
    iput p7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetUserId:I

    .line 778
    iput p8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetDisplayId:I

    .line 779
    iput-object p9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 780
    iput-object p10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 781
    iput p11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    .line 782
    iput p12, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    .line 783
    return-void
.end method
