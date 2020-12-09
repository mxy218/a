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

    .line 1881
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1882
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 1883
    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Z
    .registers 1

    .line 1863
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return p0
.end method

.method static synthetic access$2902(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Z)Z
    .registers 2

    .line 1863
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)I
    .registers 1

    .line 1863
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    return p0
.end method


# virtual methods
.method handleHomeButton(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)I
    .registers 13

    .line 1886
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 1887
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1888
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    move v2, v4

    .line 1889
    :goto_15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 1890
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_23

    move v6, v3

    goto :goto_24

    :cond_23
    move v6, v4

    .line 1899
    :goto_24
    const/4 v7, -0x1

    if-nez v2, :cond_98

    .line 1900
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3200(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object p2, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, p2, :cond_3a

    .line 1901
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1904
    :cond_3a
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 1905
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz p1, :cond_43

    .line 1906
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1907
    return v7

    .line 1910
    :cond_43
    if-eqz v5, :cond_4d

    .line 1911
    const-string p1, "WindowManager"

    const-string p2, "Ignoring HOME; event canceled."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    return v7

    .line 1915
    :cond_4d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mRingHomeBehavior:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_67

    .line 1917
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object p1

    .line 1918
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p2

    if-eqz p2, :cond_67

    .line 1919
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 1920
    return v7

    .line 1925
    :cond_67
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3200(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object p2, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, p2, :cond_8b

    .line 1926
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1927
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 1928
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1929
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    .line 1928
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1930
    return v7

    .line 1934
    :cond_8b
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;

    invoke-direct {p2, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1935
    return v7

    .line 1940
    :cond_98
    if-eqz p1, :cond_9f

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_a0

    :cond_9f
    const/4 p1, 0x0

    .line 1941
    :goto_a0
    if-eqz p1, :cond_c0

    .line 1942
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1943
    const/16 v5, 0x7d9

    if-eq v2, v5, :cond_bf

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_af

    goto :goto_bf

    .line 1948
    :cond_af
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3400()[I

    move-result-object p1

    array-length v5, p1

    move v8, v4

    :goto_b5
    if-ge v8, v5, :cond_c0

    aget v9, p1, v8

    .line 1949
    if-ne v2, v9, :cond_bc

    .line 1951
    return v7

    .line 1948
    :cond_bc
    add-int/lit8 v8, v8, 0x1

    goto :goto_b5

    .line 1946
    :cond_bf
    :goto_bf
    return v4

    .line 1957
    :cond_c0
    if-nez v1, :cond_107

    .line 1958
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 1959
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    if-eqz p1, :cond_e9

    .line 1960
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 1961
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1962
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3200(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 1963
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3200(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object p2, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SLEEP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, p2, :cond_146

    .line 1964
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    goto :goto_146

    .line 1966
    :cond_e9
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1967
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object p2, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, p2, :cond_101

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1968
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3200(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object p2, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-ne p1, p2, :cond_146

    .line 1969
    :cond_101
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3700(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_146

    .line 1971
    :cond_107
    if-eqz v6, :cond_146

    .line 1972
    if-nez v0, :cond_146

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1973
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->NOTHING:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, v0, :cond_146

    .line 1974
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object v0, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->APP_SWITCH:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, v0, :cond_128

    .line 1975
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1977
    :cond_128
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 1978
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v0, "Home - Long Press"

    invoke-static {p1, v4, v4, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2200(Lcom/android/server/policy/PhoneWindowManager;IZLjava/lang/String;)Z

    .line 1980
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;Lorg/lineageos/internal/util/DeviceKeysConstants$Action;Landroid/view/KeyEvent;)V

    .line 1981
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;)Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    move-result-object p1

    sget-object p2, Lorg/lineageos/internal/util/DeviceKeysConstants$Action;->SLEEP:Lorg/lineageos/internal/util/DeviceKeysConstants$Action;

    if-eq p1, p2, :cond_146

    .line 1982
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1986
    :cond_146
    :goto_146
    return v7
.end method

.method public synthetic lambda$handleHomeButton$0$PhoneWindowManager$DisplayHomeButtonHandler()V
    .registers 3

    .line 1934
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3100(Lcom/android/server/policy/PhoneWindowManager;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1991
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

    const-string v1, "mDisplayId = %d, mHomePressed = %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
