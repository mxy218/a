.class Lcom/android/server/broadcastradio/hal2/RadioModule$2;
.super Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field final synthetic val$listener:Landroid/hardware/radio/IAnnouncementListener;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V
    .registers 3

    .line 265
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onListUpdated$0(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;
    .registers 1

    .line 269
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->announcementFromHal(Landroid/hardware/broadcastradio/V2_0/Announcement;)Landroid/hardware/radio/Announcement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onListUpdated(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/Announcement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$2;->val$listener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$2$06udTLOtrtIC_bWC-WpXUXkuLVM;

    .line 269
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 268
    invoke-interface {v0, p1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V

    .line 270
    return-void
.end method
