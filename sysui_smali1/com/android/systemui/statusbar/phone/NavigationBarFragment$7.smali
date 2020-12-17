.class Lcom/android/systemui/statusbar/phone/NavigationBarFragment$7;
.super Ljava/lang/Object;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .registers 2

    .line 1304
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 2

    .line 1307
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    return-void
.end method
