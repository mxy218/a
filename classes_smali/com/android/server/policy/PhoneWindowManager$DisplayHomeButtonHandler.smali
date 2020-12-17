.class Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayHomeButtonHandler"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private mHomeConsumed:Z

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomePressed:Z

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3
    .param p2, "displayId"  # I

    .line 1703
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1704
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 1705
    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 1685
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    .param p1, "x1"  # Z

    .line 1685
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 1685
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    return v0
.end method

.method private handleDoubleTapOnHome()V
    .registers 3

    .line 1800
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1801
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1802
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1804
    :cond_10
    return-void
.end method

.method private handleLongPressOnHome(I)V
    .registers 7
    .param p1, "deviceId"  # I

    .line 1807
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1808
    return-void

    .line 1810
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1815
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v1

    if-eq v1, v0, :cond_56

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4f

    const/4 v0, 0x3

    const-string v2, "WindowManager"

    if-eq v1, v0, :cond_37

    .line 1830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined home long press behavior: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1831
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1830
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 1824
    :cond_37
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1825
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectHomeLongScreenOff(Landroid/content/Context;)V

    .line 1826
    const-string v0, "Go to sleep for home key long press, consume home key"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    goto :goto_5c

    .line 1820
    :cond_4f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->access$400(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V

    .line 1821
    goto :goto_5c

    .line 1817
    :cond_56
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1818
    nop

    .line 1834
    :goto_5c
    return-void
.end method


# virtual methods
.method handleHomeButton(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)I
    .registers 16
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;

    .line 1708
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 1709
    .local v0, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1710
    .local v1, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    move v2, v4

    .line 1711
    .local v2, "down":Z
    :goto_15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 1713
    .local v5, "canceled":Z
    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v7, "WindowManager"

    if-eqz v6, :cond_3b

    .line 1714
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 1715
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v3

    .line 1714
    const-string v8, "handleHomeButton in display#%d mHomePressed = %b"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_3b
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/MzPhoneWindowManager;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    invoke-virtual {v6, p1, v8}, Lcom/android/server/policy/MzPhoneWindowManager;->handleHomeFlag(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " consume home key"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    return v4

    .line 1727
    :cond_6b
    const/4 v6, -0x1

    if-nez v2, :cond_b7

    .line 1728
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez v8, :cond_77

    .line 1729
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/PhoneWindowManager;->access$3000(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1732
    :cond_77
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 1733
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz v8, :cond_80

    .line 1734
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1735
    return v6

    .line 1738
    :cond_80
    if-eqz v5, :cond_88

    .line 1739
    const-string v3, "Ignoring HOME; event canceled."

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return v6

    .line 1744
    :cond_88
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v4

    if-eqz v4, :cond_aa

    .line 1745
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1746
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 1747
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1748
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    .line 1747
    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1749
    return v6

    .line 1753
    :cond_aa
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1754
    return v6

    .line 1759
    :cond_b7
    if-eqz p1, :cond_be

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    goto :goto_bf

    :cond_be
    const/4 v7, 0x0

    .line 1760
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_bf
    if-eqz v7, :cond_df

    .line 1761
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1762
    .local v8, "type":I
    const/16 v9, 0x7d9

    if-eq v8, v9, :cond_de

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_ce

    goto :goto_de

    .line 1767
    :cond_ce
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3200()[I

    move-result-object v9

    array-length v10, v9

    move v11, v4

    :goto_d4
    if-ge v11, v10, :cond_df

    aget v12, v9, v11

    .line 1768
    .local v12, "t":I
    if-ne v8, v12, :cond_db

    .line 1770
    return v6

    .line 1767
    .end local v12  # "t":I
    :cond_db
    add-int/lit8 v11, v11, 0x1

    goto :goto_d4

    .line 1765
    :cond_de
    :goto_de
    return v4

    .line 1776
    .end local v8  # "type":I
    :cond_df
    if-nez v1, :cond_108

    .line 1777
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 1778
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    if-eqz v8, :cond_f6

    .line 1779
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 1780
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1781
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleDoubleTapOnHome()V

    goto :goto_12a

    .line 1784
    :cond_f6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v4

    if-ne v4, v3, :cond_12a

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez v3, :cond_12a

    .line 1786
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$3300(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_12a

    .line 1788
    :cond_108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_12a

    .line 1790
    if-nez v0, :cond_12a

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/MzPhoneWindowManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/policy/MzPhoneWindowManager;->isPressureHomeLongPressAvailable(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 1793
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;

    invoke-direct {v4, p0, p2}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1796
    :cond_12a
    :goto_12a
    return v6
.end method

.method public synthetic lambda$handleHomeButton$0$PhoneWindowManager$DisplayHomeButtonHandler()V
    .registers 3

    .line 1753
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2800(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public synthetic lambda$handleHomeButton$1$PhoneWindowManager$DisplayHomeButtonHandler(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "event"  # Landroid/view/KeyEvent;

    .line 1793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleLongPressOnHome(I)V

    return-void
.end method

.method public setmHomeConsumed(Z)V
    .registers 2
    .param p1, "homeConsumed"  # Z

    .line 1843
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1844
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1838
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "mDisplayId = %d, mHomePressed = %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
