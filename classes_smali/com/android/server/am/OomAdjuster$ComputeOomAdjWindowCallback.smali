.class final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "OomAdjuster.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComputeOomAdjWindowCallback"
.end annotation


# instance fields
.field adj:I

.field app:Lcom/android/server/am/ProcessRecord;

.field appUid:I

.field foregroundActivities:Z

.field logUid:I

.field procState:I

.field processStateCurTop:I

.field schedGroup:I

.field final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .registers 2

    .line 713
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/OomAdjuster$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/am/OomAdjuster;
    .param p2, "x1"  # Lcom/android/server/am/OomAdjuster$1;

    .line 713
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    return-void
.end method


# virtual methods
.method initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V
    .registers 9
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "adj"  # I
    .param p3, "foregroundActivities"  # Z
    .param p4, "procState"  # I
    .param p5, "schedGroup"  # I
    .param p6, "appUid"  # I
    .param p7, "logUid"  # I
    .param p8, "processStateCurTop"  # I

    .line 727
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    .line 728
    iput p2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 729
    iput-boolean p3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 730
    iput p4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 731
    iput p5, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 732
    iput p6, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    .line 733
    iput p7, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    .line 734
    iput p8, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    .line 735
    return-void
.end method

.method public onOtherActivity()V
    .registers 4

    .line 822
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_32

    .line 823
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 824
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const-string v1, "cch-act"

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 825
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v1, :cond_32

    .line 826
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to cached activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_32
    return-void
.end method

.method public onPausedActivity()V
    .registers 6

    .line 765
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "pause-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_33

    .line 766
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 767
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 768
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_33

    .line 769
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to pause-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_33
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_61

    .line 773
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 774
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 775
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_49

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_61

    .line 776
    :cond_49
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to pause-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_61
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_68

    .line 781
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 783
    :cond_68
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 784
    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 786
    return-void
.end method

.method public onStoppingActivity(Z)V
    .registers 7
    .param p1, "finishing"  # Z

    .line 790
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "stop-activity"

    const/16 v3, 0xc8

    if-le v0, v3, :cond_33

    .line 791
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 792
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 793
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_33

    .line 794
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to stop-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_33
    if-nez p1, :cond_63

    .line 806
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    const/16 v3, 0x10

    if-le v0, v3, :cond_63

    .line 807
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 808
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 809
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4b

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_63

    .line 810
    :cond_4b
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to stop-activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_63
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 816
    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 818
    return-void
.end method

.method public onVisibleActivity()V
    .registers 6

    .line 740
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    const-string v1, "ActivityManager"

    const-string/jumbo v2, "vis-activity"

    const/16 v3, 0x64

    if-le v0, v3, :cond_33

    .line 741
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    .line 742
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 743
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v3, :cond_33

    .line 744
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to vis-activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_33
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->processStateCurTop:I

    if-le v0, v3, :cond_61

    .line 748
    iput v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    .line 749
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 750
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_49

    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->logUid:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->appUid:I

    if-ne v0, v2, :cond_61

    .line 751
    :cond_49
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to vis-activity (top): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_61
    iget v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_68

    .line 756
    iput v1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    .line 758
    :cond_68
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->cached:Z

    .line 759
    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    .line 761
    return-void
.end method
