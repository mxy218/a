.class final Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
.super Landroid/os/Handler;
.source "LocationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$1;)V
    .registers 3

    .line 223
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    return-void
.end method

.method static synthetic lambda$locationSettingsChanged$1(ZLcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .registers 2

    .line 250
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationSettingsChanged(Z)V

    return-void
.end method

.method private locationActiveChanged()V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$vKTe7eMzgWgCJvXCt8UIIkFyg78;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$vKTe7eMzgWgCJvXCt8UIIkFyg78;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V

    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 243
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private locationSettingsChanged()V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 248
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v1

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$xXVOboFsQOHoRY-EFzvZu-IOYh0;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$xXVOboFsQOHoRY-EFzvZu-IOYh0;-><init>(Z)V

    invoke-static {p0, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 251
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 229
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_10

    .line 234
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationActiveChanged()V

    goto :goto_10

    .line 231
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationSettingsChanged()V

    :goto_10
    return-void
.end method

.method public synthetic lambda$locationActiveChanged$0$LocationControllerImpl$H(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationActiveChanged(Z)V

    return-void
.end method
