.class Lcom/android/settings/notification/ZenModeEventRuleSettings$3;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeEventRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)I
    .registers 3

    .line 257
    iget-object p0, p1, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 254
    check-cast p1, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    check-cast p2, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;->compare(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)I

    move-result p0

    return p0
.end method
