.class Lcom/android/systemui/volume/VolumeUI$1;
.super Landroid/database/ContentObserver;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 104
    invoke-static {}, Lcom/android/systemui/volume/VolumeUI;->access$100()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 105
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeUI;->access$200(Lcom/android/systemui/volume/VolumeUI;)V

    :cond_f
    return-void
.end method
