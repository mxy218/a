.class final Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartInputHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY_SIZE_FOR_HIGH_RAM_DEVICE:I = 0x10

.field private static final ENTRY_SIZE_FOR_LOW_RAM_DEVICE:I = 0x5


# instance fields
.field private final mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;

.field private mNextIndex:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->getEntrySize()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$1;)V
    .registers 2

    .line 772
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;-><init>()V

    return-void
.end method

.method private static getEntrySize()I
    .registers 1

    .line 790
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 791
    const/4 v0, 0x5

    return v0

    .line 793
    :cond_8
    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method addEntry(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .registers 5

    .line 868
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    .line 869
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;

    aget-object v2, v1, v0

    if-nez v2, :cond_10

    .line 870
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;

    invoke-direct {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    aput-object v2, v1, v0

    goto :goto_15

    .line 872
    :cond_10
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 874
    :goto_15
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    .line 875
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 878
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 881
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;

    array-length v3, v2

    if-ge v1, v3, :cond_196

    .line 882
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;->mNextIndex:I

    add-int/2addr v3, v1

    array-length v4, v2

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 883
    if-nez v2, :cond_1b

    .line 884
    goto/16 :goto_192

    .line 886
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartInput #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mSequenceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mWallTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mStartInputReason:I

    .line 893
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restarting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mRestarting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imeToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " imeUserId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " imeDisplayId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeDisplayId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " targetWin="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] targetUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targetDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " clientBindSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mClientBindSequenceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " softInputMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " inputType=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " imeOptions=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 914
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fieldId=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 915
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fieldName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " actionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " actionLabel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    :goto_192
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 920
    :cond_196
    return-void
.end method
