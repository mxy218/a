.class final enum Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;
.super Ljava/lang/Enum;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PowerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

.field public static final enum normal:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

.field public static final enum save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 876
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    const/4 v1, 0x0

    const-string v2, "normal"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->normal:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    .line 880
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    const/4 v2, 0x1

    const-string v3, "save"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    .line 872
    sget-object v3, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->normal:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->save:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->$VALUES:[Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 872
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;
    .registers 2

    .line 872
    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;
    .registers 1

    .line 872
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->$VALUES:[Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/KeyguardBouncer$PowerState;

    return-object v0
.end method
