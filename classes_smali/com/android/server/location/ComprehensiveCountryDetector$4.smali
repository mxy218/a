.class Lcom/android/server/location/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    .line 440
    iget-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {p1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$308(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    .line 441
    iget-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {p1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    .line 443
    iget-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-static {p1}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$500(Lcom/android/server/location/ComprehensiveCountryDetector;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 444
    return-void

    .line 448
    :cond_13
    iget-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    .line 449
    return-void
.end method
