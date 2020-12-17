.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$XFUG-8Il5dqSkLb-5SFSNbiYcXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$XFUG-8Il5dqSkLb-5SFSNbiYcXg;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$XFUG-8Il5dqSkLb-5SFSNbiYcXg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$XFUG-8Il5dqSkLb-5SFSNbiYcXg;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$XFUG-8Il5dqSkLb-5SFSNbiYcXg;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$updateManagedProfile$0$PhoneStatusBarPolicy(Z)V

    return-void
.end method
