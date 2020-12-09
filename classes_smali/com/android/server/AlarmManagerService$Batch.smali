.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 5

    .line 694
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 695
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 696
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 697
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 698
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object p2, p2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v0, p1, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne p2, v0, :cond_32

    .line 700
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;J)J

    .line 702
    :cond_32
    return-void
.end method

.method static synthetic lambda$remove$0(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    .line 751
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 9

    .line 717
    nop

    .line 719
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 720
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_10

    .line 721
    rsub-int/lit8 v0, v0, 0x0

    sub-int/2addr v0, v1

    .line 723
    :cond_10
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 724
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, v3, :cond_2a

    .line 725
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/AlarmManagerService;->access$002(Lcom/android/server/AlarmManagerService;J)J

    .line 730
    :cond_2a
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_37

    .line 731
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 732
    goto :goto_38

    .line 730
    :cond_37
    move v1, v2

    .line 734
    :goto_38
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_44

    .line 735
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 737
    :cond_44
    iget v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    iget p1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 742
    return v1
.end method

.method canHold(JJ)Z
    .registers 7

    .line 713
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_e

    iget-wide p1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long p1, p1, p3

    if-gtz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 3

    .line 709
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    return-object p1
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 6

    .line 794
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 795
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 796
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 797
    invoke-virtual {v3, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 798
    const/4 p1, 0x1

    return p1

    .line 795
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 801
    :cond_1d
    return v1
.end method

.method hasWakeups()Z
    .registers 6

    .line 805
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 806
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1c

    .line 807
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 809
    iget v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_19

    .line 810
    return v4

    .line 806
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 813
    :cond_1c
    return v1
.end method

.method remove(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3

    .line 751
    new-instance v0, Lcom/android/server/-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$Batch$Xltkj5RTKUMuFVeuavpuY7-Ogzc;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result p1

    return p1
.end method

.method remove(Ljava/util/function/Predicate;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;Z)Z"
        }
    .end annotation

    .line 755
    nop

    .line 756
    nop

    .line 757
    nop

    .line 758
    nop

    .line 759
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move v6, v0

    move-wide v4, v3

    move-wide v2, v1

    move v1, v6

    :goto_10
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6c

    .line 760
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 761
    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_56

    .line 762
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 763
    if-nez p2, :cond_35

    .line 764
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v1, v8, v9}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;II)V

    .line 766
    :cond_35
    nop

    .line 767
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_3f

    .line 768
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1, v9}, Lcom/android/server/AlarmManagerService;->access$302(Lcom/android/server/AlarmManagerService;Z)Z

    .line 770
    :cond_3f
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v1, v7, :cond_54

    .line 771
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v7

    invoke-static {v1, v7, v8}, Lcom/android/server/AlarmManagerService;->access$402(Lcom/android/server/AlarmManagerService;J)J

    .line 783
    :cond_54
    move v1, v9

    goto :goto_6b

    .line 774
    :cond_56
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v2

    if-lez v8, :cond_5e

    .line 775
    iget-wide v2, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 777
    :cond_5e
    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_66

    .line 778
    iget-wide v4, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 780
    :cond_66
    iget v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v6, v7

    .line 781
    add-int/lit8 v0, v0, 0x1

    .line 783
    :goto_6b
    goto :goto_10

    .line 784
    :cond_6c
    if-eqz v1, :cond_74

    .line 786
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 787
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 788
    iput v6, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 790
    :cond_74
    return v1
.end method

.method size()I
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 819
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 821
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 822
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 823
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v1, :cond_49

    .line 824
    const-string v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    :cond_49
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 20

    .line 833
    move-object v0, p0

    move-object v8, p1

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 835
    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    const-wide v3, 0x10300000001L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 836
    iget-wide v1, v0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    const-wide v3, 0x10300000002L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 837
    iget v1, v0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 838
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 839
    const-wide v2, 0x20b00000004L

    move-object v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 840
    goto :goto_2a

    .line 842
    :cond_44
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 843
    return-void
.end method
