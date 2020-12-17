.class Lcom/android/systemui/qs/QSSecurityFooter$H;
.super Landroid/os/Handler;
.source "QSSecurityFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V
    .registers 3

    .line 470
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 471
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V
    .registers 4

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x0

    .line 478
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    const-string v0, "handleRefreshState"

    .line 480
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {p1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$900(Lcom/android/systemui/qs/QSSecurityFooter;)V

    goto :goto_3a

    .line 481
    :cond_e
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3a

    const-string v0, "handleClick"

    .line 483
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {p1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_3a

    :catchall_1a
    move-exception p1

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSSecurityFooter"

    .line 487
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    return-void
.end method
