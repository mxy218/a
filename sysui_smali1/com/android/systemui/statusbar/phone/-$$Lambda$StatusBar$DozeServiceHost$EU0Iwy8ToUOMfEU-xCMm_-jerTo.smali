.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DozeServiceHost$EU0Iwy8ToUOMfEU-xCMm_-jerTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DozeServiceHost$EU0Iwy8ToUOMfEU-xCMm_-jerTo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DozeServiceHost$EU0Iwy8ToUOMfEU-xCMm_-jerTo;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DozeServiceHost$EU0Iwy8ToUOMfEU-xCMm_-jerTo;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$DozeServiceHost$EU0Iwy8ToUOMfEU-xCMm_-jerTo;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->lambda$fireNotificationPulse$0$StatusBar$DozeServiceHost(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
