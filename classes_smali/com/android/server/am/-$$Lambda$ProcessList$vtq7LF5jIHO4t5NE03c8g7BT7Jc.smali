.class public final synthetic Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ProcessList;

.field private final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:[I

.field private final synthetic f$4:I

.field private final synthetic f$5:I

.field private final synthetic f$6:Ljava/lang/String;

.field private final synthetic f$7:Ljava/lang/String;

.field private final synthetic f$8:Ljava/lang/String;

.field private final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$0:Lcom/android/server/am/ProcessList;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$3:[I

    iput p5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$4:I

    iput p6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$5:I

    iput-object p7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$8:Ljava/lang/String;

    iput-wide p10, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$9:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$0:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$3:[I

    iget v4, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$4:I

    iget v5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$5:I

    iget-object v6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$7:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$8:Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$vtq7LF5jIHO4t5NE03c8g7BT7Jc;->f$9:J

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
