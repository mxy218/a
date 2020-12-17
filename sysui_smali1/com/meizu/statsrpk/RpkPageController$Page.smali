.class Lcom/meizu/statsrpk/RpkPageController$Page;
.super Ljava/lang/Object;
.source "RpkPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/RpkPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation


# instance fields
.field private elapse:J

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/statsrpk/RpkPageController;

.field private time:J


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/RpkPageController;Ljava/lang/String;JJ)V
    .registers 7

    .line 121
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkPageController$Page;->this$0:Lcom/meizu/statsrpk/RpkPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/meizu/statsrpk/RpkPageController$Page;->name:Ljava/lang/String;

    .line 123
    iput-wide p3, p0, Lcom/meizu/statsrpk/RpkPageController$Page;->time:J

    .line 124
    iput-wide p5, p0, Lcom/meizu/statsrpk/RpkPageController$Page;->elapse:J

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsrpk/RpkPageController$Page;)J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/meizu/statsrpk/RpkPageController$Page;->elapse:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/meizu/statsrpk/RpkPageController$Page;)Ljava/lang/String;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkPageController$Page;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/statsrpk/RpkPageController$Page;)J
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/meizu/statsrpk/RpkPageController$Page;->time:J

    return-wide v0
.end method
