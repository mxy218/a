.class public final enum Lcom/android/settings/accessibility/VideoPlayer$State;
.super Ljava/lang/Enum;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/accessibility/VideoPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum END:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum PAUSED:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

.field public static final enum STOPPED:Lcom/android/settings/accessibility/VideoPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 132
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 134
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v2, 0x1

    const-string v3, "PREPARED"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 136
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v3, 0x2

    const-string v4, "STARTED"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 138
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    invoke-direct {v0, v5, v4}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->PAUSED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 144
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v5, 0x4

    const-string v6, "STOPPED"

    invoke-direct {v0, v6, v5}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->STOPPED:Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 146
    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v6, 0x5

    const-string v7, "END"

    invoke-direct {v0, v7, v6}, Lcom/android/settings/accessibility/VideoPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/accessibility/VideoPlayer$State;

    .line 130
    sget-object v7, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->PAUSED:Lcom/android/settings/accessibility/VideoPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->STOPPED:Lcom/android/settings/accessibility/VideoPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->$VALUES:[Lcom/android/settings/accessibility/VideoPlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/VideoPlayer$State;
    .registers 2

    .line 130
    const-class v0, Lcom/android/settings/accessibility/VideoPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/VideoPlayer$State;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/accessibility/VideoPlayer$State;
    .registers 1

    .line 130
    sget-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->$VALUES:[Lcom/android/settings/accessibility/VideoPlayer$State;

    invoke-virtual {v0}, [Lcom/android/settings/accessibility/VideoPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/accessibility/VideoPlayer$State;

    return-object v0
.end method
