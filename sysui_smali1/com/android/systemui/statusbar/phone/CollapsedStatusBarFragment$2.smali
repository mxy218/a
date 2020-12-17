.class Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SubscriptionsChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChange(I)V
    .registers 2

    return-void
.end method
