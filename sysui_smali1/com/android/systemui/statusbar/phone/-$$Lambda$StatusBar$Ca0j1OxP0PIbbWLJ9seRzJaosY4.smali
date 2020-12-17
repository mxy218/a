.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Ca0j1OxP0PIbbWLJ9seRzJaosY4;->f$1:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$25$StatusBar(Landroid/app/PendingIntent;)V

    return-void
.end method
