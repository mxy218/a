.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field

.field final swapPss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 9

    .line 12060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 12062
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 12063
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 12064
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 12065
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 12066
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 12067
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 12068
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .registers 10

    .line 12050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 12052
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 12053
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 12054
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 12055
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 12056
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 12057
    iput-boolean p8, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 12058
    return-void
.end method
