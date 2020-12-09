.class public final Lcom/android/server/am/ProcessList$ProcStateMemTracker;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStateMemTracker"
.end annotation


# instance fields
.field final mHighestMem:[I

.field mPendingHighestMemState:I

.field mPendingMemState:I

.field mPendingScalingFactor:F

.field final mScalingFactor:[F

.field mTotalHighestMem:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 1043
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 1044
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1051
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1f

    .line 1052
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aput v0, v2, v1

    .line 1053
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v2, v1

    .line 1051
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1055
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1056
    return-void
.end method


# virtual methods
.method public dumpLine(Ljava/io/PrintWriter;)V
    .registers 8

    .line 1059
    const-string v0, "best="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1061
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    nop

    .line 1063
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    const-string/jumbo v2, "x"

    const-string v3, " "

    const/4 v4, 0x5

    if-ge v0, v4, :cond_47

    .line 1064
    iget-object v5, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v5, v5, v0

    if-ge v5, v4, :cond_44

    .line 1065
    if-eqz v1, :cond_27

    .line 1066
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    :cond_27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1070
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1074
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    const/4 v1, 0x1

    .line 1063
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1078
    :cond_47
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_6f

    .line 1080
    const-string v0, " / pending state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1082
    const-string v0, " highest="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1084
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1086
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    :cond_6f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1089
    return-void
.end method
