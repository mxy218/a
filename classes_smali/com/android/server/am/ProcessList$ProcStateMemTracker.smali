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

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 1049
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 1050
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1057
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1f

    .line 1058
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aput v0, v2, v1

    .line 1059
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v2, v1

    .line 1057
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1061
    .end local v1  # "i":I
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1062
    return-void
.end method


# virtual methods
.method public dumpLine(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1065
    const-string v0, "best="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    const/4 v0, 0x0

    .line 1069
    .local v0, "needSep":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    const-string/jumbo v2, "x"

    const-string v3, " "

    const/4 v4, 0x5

    if-ge v1, v4, :cond_47

    .line 1070
    iget-object v5, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v5, v5, v1

    if-ge v5, v4, :cond_44

    .line 1071
    if-eqz v0, :cond_27

    .line 1072
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x0

    .line 1075
    :cond_27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget-object v4, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1078
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget-object v3, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 1080
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    const/4 v0, 0x1

    .line 1069
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1084
    .end local v1  # "i":I
    :cond_47
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v1, :cond_6f

    .line 1086
    const-string v1, " / pending state="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1088
    const-string v1, " highest="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1090
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1092
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    :cond_6f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1095
    return-void
.end method
