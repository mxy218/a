.class final enum Lflyme/support/v7/widget/TwoStateTextView$State;
.super Ljava/lang/Enum;
.source "TwoStateTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/TwoStateTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lflyme/support/v7/widget/TwoStateTextView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lflyme/support/v7/widget/TwoStateTextView$State;

.field public static final enum COMPLETED:Lflyme/support/v7/widget/TwoStateTextView$State;

.field public static final enum PROGRESS:Lflyme/support/v7/widget/TwoStateTextView$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 21
    new-instance v0, Lflyme/support/v7/widget/TwoStateTextView$State;

    const/4 v1, 0x0

    const-string v2, "COMPLETED"

    invoke-direct {v0, v2, v1}, Lflyme/support/v7/widget/TwoStateTextView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lflyme/support/v7/widget/TwoStateTextView$State;->COMPLETED:Lflyme/support/v7/widget/TwoStateTextView$State;

    new-instance v0, Lflyme/support/v7/widget/TwoStateTextView$State;

    const/4 v2, 0x1

    const-string v3, "PROGRESS"

    invoke-direct {v0, v3, v2}, Lflyme/support/v7/widget/TwoStateTextView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lflyme/support/v7/widget/TwoStateTextView$State;->PROGRESS:Lflyme/support/v7/widget/TwoStateTextView$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lflyme/support/v7/widget/TwoStateTextView$State;

    .line 20
    sget-object v3, Lflyme/support/v7/widget/TwoStateTextView$State;->COMPLETED:Lflyme/support/v7/widget/TwoStateTextView$State;

    aput-object v3, v0, v1

    sget-object v1, Lflyme/support/v7/widget/TwoStateTextView$State;->PROGRESS:Lflyme/support/v7/widget/TwoStateTextView$State;

    aput-object v1, v0, v2

    sput-object v0, Lflyme/support/v7/widget/TwoStateTextView$State;->$VALUES:[Lflyme/support/v7/widget/TwoStateTextView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lflyme/support/v7/widget/TwoStateTextView$State;
    .registers 2

    .line 20
    const-class v0, Lflyme/support/v7/widget/TwoStateTextView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/TwoStateTextView$State;

    return-object p0
.end method

.method public static values()[Lflyme/support/v7/widget/TwoStateTextView$State;
    .registers 1

    .line 20
    sget-object v0, Lflyme/support/v7/widget/TwoStateTextView$State;->$VALUES:[Lflyme/support/v7/widget/TwoStateTextView$State;

    invoke-virtual {v0}, [Lflyme/support/v7/widget/TwoStateTextView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lflyme/support/v7/widget/TwoStateTextView$State;

    return-object v0
.end method
