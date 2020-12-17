.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CSd9n4rtnrfFyOdT2eTFRNUO5xM;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$26$StatusBar(Landroid/content/Intent;)V

    return-void
.end method
