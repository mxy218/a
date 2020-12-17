.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$2$LI33EMb6BH_vzJDvdqlOnj25WlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$2$LI33EMb6BH_vzJDvdqlOnj25WlE;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$2$LI33EMb6BH_vzJDvdqlOnj25WlE;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->lambda$onUserSwitching$0$PhoneStatusBarPolicy$2()V

    return-void
.end method
