.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NWCrb8vzuopzf5kAygkNeXndtBo;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    return-void
.end method
