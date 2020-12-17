.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$c9qjiwrIU9RXDCI3JWlVp8xvdoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$c9qjiwrIU9RXDCI3JWlVp8xvdoU;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$c9qjiwrIU9RXDCI3JWlVp8xvdoU;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$handleVisibleToUserChangedImpl$21$StatusBar()V

    return-void
.end method
